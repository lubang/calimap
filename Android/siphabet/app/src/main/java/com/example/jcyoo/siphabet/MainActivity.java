package com.example.jcyoo.siphabet;

import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class MainActivity extends AppCompatActivity
{
    private String m_strRESTURL = "http://192.168.0.193:3000/siphabet";
    private android.util.Log Log;

    TextView tvNaverHtml;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void onClick(View view)
    {

        tvNaverHtml = (TextView)this.findViewById(R.id.textView3);

        // Thread로 웹서버에 접속
        new Thread()
        {
            public void run()
            {
                String strRestResult = getRESTData(m_strRESTURL);

                Bundle bun = new Bundle();
                bun.putString("RESTResult", strRestResult);
                Message msg = handler.obtainMessage();
                msg.setData(bun);
                handler.sendMessage(msg);
            }
        }.start();

    }

    private String getRESTData(String _strURL)
    {
        String strResult = "";

        URL url =null;
        HttpURLConnection http = null;
        InputStreamReader isr = null;
        BufferedReader br = null;

        try
        {
            url = new URL(_strURL);
            http = (HttpURLConnection) url.openConnection();
            http.setConnectTimeout(3*1000);
            http.setReadTimeout(3*1000);

            isr = new InputStreamReader(http.getInputStream());
            br = new BufferedReader(isr);

            String str = null;
            while ((str = br.readLine()) != null)
            {
                strResult += str + "\n";
            }

        }
        catch(Exception e)
        {
            Log.e("Exception", e.toString());
        }
        finally
        {
            if(http != null)
            {
                try{http.disconnect();}catch(Exception e){}
            }

            if(isr != null)
            {
                try{isr.close();}catch(Exception e){}
            }

            if(br != null)
            {
                try{br.close();}catch(Exception e){}
            }
        }

        return strResult;
    }

    Handler handler = new Handler()
    {
        public void handleMessage(Message msg)
        {
            Bundle bun = msg.getData();
            String strRestResult = bun.getString("RESTResult");
            tvNaverHtml.setText(strRestResult);

            startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(strRestResult)));
        }
    };

}



