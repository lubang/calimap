package com.example.jcyoo.siphabet;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.GridLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.InputStream;

/**
 * Created by JCYoo on 2016-07-26.
 */
public class ResultActivity extends Activity
{
    private String m_strBaseURL = "http://calimap.party";
    private TextView tvReuslt;
    private LinearLayout resultLayout;

    protected void onCreate(Bundle _saveInstanceState)
    {
        super.onCreate(_saveInstanceState);
        setContentView(R.layout.result_page);

        Intent intent = getIntent();

        String strRESTReturn = intent.getStringExtra("REST_Return");
        String strRequestText = "";

        tvReuslt = (TextView)this.findViewById(R.id.tvResult);
        resultLayout = (LinearLayout)this.findViewById(R.id.resultLayout);


        // Json 파싱
        try
        {
            JSONObject objJsonResult = new JSONObject(strRESTReturn);
            strRequestText = objJsonResult.getString("text");
            JSONArray listCaliInfo = objJsonResult.getJSONArray("cali");


            for(int i = 0; i < listCaliInfo.length() ; i++)
            {
                // Type 확인
                Object objInfo = listCaliInfo.get(i);
                String strType = objInfo.getClass().toString();

                if(strType.contains("org.json.JSONObject") == false)
                    continue;

                JSONObject objCaliInfo = listCaliInfo.getJSONObject(i);

                String strImageURL = objCaliInfo.getString("image");
                JSONArray listGeoInfo = objCaliInfo.getJSONObject("geo").getJSONObject("geometry").getJSONArray("coordinates");
                double dLat = 0, dLong = 0;
                dLat = listGeoInfo.getDouble(0);
                dLong = listGeoInfo.getDouble(1);

                // ImageView를 동적으로 추가
                ImageView iv = new ImageView(this);
                iv.setLayoutParams(new TableLayout.LayoutParams(400, 400));
                resultLayout.addView(iv);

                OpenHttpConnection opHttpCon = new OpenHttpConnection();
                opHttpCon.execute(iv, m_strBaseURL + "/"+ strImageURL);
            }
        }
        catch (JSONException e)
        {
            e.printStackTrace();
        }

        tvReuslt.setText(strRequestText);
    }


    private class OpenHttpConnection extends AsyncTask<Object, Void, Bitmap>
    {

        private ImageView bmImage ;

        @Override
        protected Bitmap doInBackground(Object... params)
        {
            Bitmap mBitmap = null;
            bmImage = (ImageView)params[0];
            String url = (String)params[1];
            InputStream in = null;
            try
            {
                in = new java.net.URL(url).openStream();
                mBitmap = BitmapFactory.decodeStream(in);
                in.close();

            }
            catch (Exception ex)
            {
                ex.printStackTrace();
            }
            return mBitmap;
        }

        @Override
        protected void onPostExecute(Bitmap bm)
        {
            super.onPostExecute(bm);
            bmImage.setImageBitmap(bm);
        }
    }
}
