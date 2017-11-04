package com.yla.service.ueditor;

import com.yla.service.ueditor.ueenum.UEditorActionEnum;

import java.io.InputStream;
import java.util.List;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/11/4
 * Time: 17:18
 */
public interface UEditorRequest {

     String getAction ();

     List<InputStream> getInputStreams();

     UEditorActionEnum getUEditorActionEnum();
}
