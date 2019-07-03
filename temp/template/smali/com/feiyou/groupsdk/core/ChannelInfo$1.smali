.class Lcom/feiyou/groupsdk/core/ChannelInfo$1;
.super Ljava/lang/Object;
.source "ChannelInfo.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/ChannelInfo;->login(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYUserInfo;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e1"    # Ljava/io/IOException;

    .prologue
    .line 107
    new-instance v0, Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-direct {v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;-><init>()V

    .line 108
    .local v0, "resultInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setMsg(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    invoke-virtual {v1, v0}, Lcom/feiyou/groupsdk/core/FYLoginCallback;->loginFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 110
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "result":Ljava/lang/String;
    const-string v4, "TAG"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v4, Lcom/feiyou/groupsdk/core/ChannelInfo$1$1;

    invoke-direct {v4, p0}, Lcom/feiyou/groupsdk/core/ChannelInfo$1$1;-><init>(Lcom/feiyou/groupsdk/core/ChannelInfo$1;)V

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/alibaba/fastjson/parser/Feature;

    .line 81
    invoke-static {v1, v4, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/ResultInfo;

    .line 83
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/feiyou/groupsdk/core/FYUserInfo;>;"
    iget-object v4, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1;->val$activity:Landroid/app/Activity;

    new-instance v5, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;

    iget-object v6, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    iget-object v7, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v5, p0, v3, v6, v7}, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;-><init>(Lcom/feiyou/groupsdk/core/ChannelInfo$1;Lcom/game/sdk/domain/ResultInfo;Lcom/feiyou/groupsdk/core/FYLoginCallback;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "result":Ljava/lang/String;
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/feiyou/groupsdk/core/FYUserInfo;>;"
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e1":Ljava/io/IOException;
    new-instance v2, Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-direct {v2}, Lcom/feiyou/groupsdk/core/FYResultInfo;-><init>()V

    .line 99
    .local v2, "resultInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setMsg(Ljava/lang/String;)V

    .line 100
    iget-object v4, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    invoke-virtual {v4, v2}, Lcom/feiyou/groupsdk/core/FYLoginCallback;->loginFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    goto :goto_0
.end method
