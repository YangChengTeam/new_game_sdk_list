.class Lcom/feiyou/groupsdk/core/FYGameSDK$2$1;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Lcom/duoyou/gamesdk/openapi/OnPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/FYGameSDK$2;->paySuccess(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/feiyou/groupsdk/core/FYGameSDK$2;

.field private final synthetic val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/FYGameSDK$2;Lcom/feiyou/groupsdk/core/FYPayCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$2$1;->this$1:Lcom/feiyou/groupsdk/core/FYGameSDK$2;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$2$1;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayCallback(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V
    .locals 20
    .param p1, "payType"    # Lcom/duoyou/gamesdk/openapi/PAY_TYPE;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 208
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 209
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-string v17, "code"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "code":Ljava/lang/String;
    const-string v17, "message"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 211
    .local v9, "message":Ljava/lang/String;
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 212
    .local v10, "orderInfoObject":Lorg/json/JSONObject;
    new-instance v14, Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-direct {v14}, Lcom/feiyou/groupsdk/core/FYResultInfo;-><init>()V

    .line 213
    .local v14, "resultInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Ljava/lang/Float;>;"
    if-eqz v10, :cond_0

    .line 215
    const-string v17, "orderNum"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 217
    .local v11, "orderNum":Ljava/lang/String;
    const-string v17, "gameOrderNo"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, "gameOrderNo":Ljava/lang/String;
    const-string v17, "roleId"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 221
    .local v15, "roleId":Ljava/lang/String;
    const-string v17, "roleName"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 223
    .local v16, "roleName":Ljava/lang/String;
    const-string v17, "productId"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 225
    .local v12, "productId":Ljava/lang/String;
    const-string v17, "productIntro"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 227
    .local v13, "productIntro":Ljava/lang/String;
    const-string v17, "cashFee"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "cashFee":Ljava/lang/String;
    new-instance v5, Lcom/feiyou/groupsdk/core/FYPayInfo;

    invoke-direct {v5}, Lcom/feiyou/groupsdk/core/FYPayInfo;-><init>()V

    .line 229
    .local v5, "fyPayInfo":Lcom/feiyou/groupsdk/core/FYPayInfo;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setData(Ljava/lang/Object;)V

    .line 232
    .end local v2    # "cashFee":Ljava/lang/String;
    .end local v5    # "fyPayInfo":Lcom/feiyou/groupsdk/core/FYPayInfo;
    .end local v7    # "gameOrderNo":Ljava/lang/String;
    .end local v11    # "orderNum":Ljava/lang/String;
    .end local v12    # "productId":Ljava/lang/String;
    .end local v13    # "productIntro":Ljava/lang/String;
    .end local v15    # "roleId":Ljava/lang/String;
    .end local v16    # "roleName":Ljava/lang/String;
    :cond_0
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 233
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/feiyou/groupsdk/core/FYErrorCode;->SUCCESS:Lcom/feiyou/groupsdk/core/FYErrorCode;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setCode(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feiyou/groupsdk/core/FYGameSDK$2$1;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/feiyou/groupsdk/core/FYPayCallback;->paySuccess(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 242
    :goto_0
    const-string v17, "json"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "payCallback = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v3    # "code":Ljava/lang/String;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "message":Ljava/lang/String;
    .end local v10    # "orderInfoObject":Lorg/json/JSONObject;
    .end local v14    # "resultInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Ljava/lang/Float;>;"
    :goto_1
    return-void

    .line 237
    .restart local v3    # "code":Ljava/lang/String;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "message":Ljava/lang/String;
    .restart local v10    # "orderInfoObject":Lorg/json/JSONObject;
    .restart local v14    # "resultInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Ljava/lang/Float;>;"
    :cond_1
    new-instance v6, Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-direct {v6}, Lcom/feiyou/groupsdk/core/FYResultInfo;-><init>()V

    .line 238
    .local v6, "fyresultInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/feiyou/groupsdk/core/FYErrorCode;->FAILURE:Lcom/feiyou/groupsdk/core/FYErrorCode;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setCode(Ljava/lang/String;)V

    .line 239
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/feiyou/groupsdk/core/FYErrorCode;->FAILURE:Lcom/feiyou/groupsdk/core/FYErrorCode;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setMsg(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feiyou/groupsdk/core/FYGameSDK$2$1;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/feiyou/groupsdk/core/FYPayCallback;->payFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v3    # "code":Ljava/lang/String;
    .end local v6    # "fyresultInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Ljava/lang/String;>;"
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "message":Ljava/lang/String;
    .end local v10    # "orderInfoObject":Lorg/json/JSONObject;
    .end local v14    # "resultInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Ljava/lang/Float;>;"
    :catch_0
    move-exception v4

    .line 244
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    new-instance v6, Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-direct {v6}, Lcom/feiyou/groupsdk/core/FYResultInfo;-><init>()V

    .line 246
    .restart local v6    # "fyresultInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/feiyou/groupsdk/core/FYErrorCode;->FAILURE:Lcom/feiyou/groupsdk/core/FYErrorCode;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setCode(Ljava/lang/String;)V

    .line 247
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/feiyou/groupsdk/core/FYErrorCode;->FAILURE:Lcom/feiyou/groupsdk/core/FYErrorCode;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setMsg(Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feiyou/groupsdk/core/FYGameSDK$2$1;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/feiyou/groupsdk/core/FYPayCallback;->payFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    goto :goto_1
.end method
