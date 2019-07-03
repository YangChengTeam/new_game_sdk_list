.class Lcom/feiyou/groupsdk/core/FYGameSDK$2;
.super Lcom/feiyou/groupsdk/core/FYPayCallback;
.source "FYGameSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/FYGameSDK;->pay(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

.field private final synthetic val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Lcom/feiyou/groupsdk/core/FYPayCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$2;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$2;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    .line 173
    invoke-direct {p0}, Lcom/feiyou/groupsdk/core/FYPayCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public payCancel(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    .locals 1
    .param p1, "resultInfo"    # Lcom/feiyou/groupsdk/core/FYResultInfo;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$2;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-virtual {v0, p1}, Lcom/feiyou/groupsdk/core/FYPayCallback;->payCancel(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 265
    return-void
.end method

.method public payFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    .locals 1
    .param p1, "resultInfo"    # Lcom/feiyou/groupsdk/core/FYResultInfo;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$2;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-virtual {v0, p1}, Lcom/feiyou/groupsdk/core/FYPayCallback;->payFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 260
    return-void
.end method

.method public paySuccess(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    .locals 9
    .param p1, "resultInfo"    # Lcom/feiyou/groupsdk/core/FYResultInfo;

    .prologue
    const/4 v8, 0x0

    .line 177
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/feiyou/groupsdk/core/FYPayInfo;

    .line 179
    .local v2, "info":Lcom/feiyou/groupsdk/core/FYPayInfo;
    new-instance v0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;-><init>()V

    .line 181
    .local v0, "dyPayInfo":Lcom/duoyou/gamesdk/openapi/DyPayInfo;
    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getAttach()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setGameOrderId(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getMoney()F

    move-result v3

    float-to-long v4, v3

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setAmount(J)V

    .line 185
    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getRole()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setRoleId(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getRole()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setRoleName(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setProductId(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getProductDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setProductInro(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, v8}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setPower(I)V

    .line 192
    invoke-virtual {v0, v8}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setVip(I)V

    .line 194
    invoke-virtual {v0, v8}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setTurn(I)V

    .line 195
    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setZoneId(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setZoneName(Ljava/lang/String;)V

    .line 198
    :try_start_0
    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getLevel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setRoleLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    invoke-static {}, Lcom/duoyou/gamesdk/openapi/DyApiImpl;->getDyApi()Lcom/duoyou/gamesdk/openapi/IDyApi;

    move-result-object v3

    iget-object v4, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$2;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-static {v4}, Lcom/feiyou/groupsdk/core/FYGameSDK;->access$2(Lcom/feiyou/groupsdk/core/FYGameSDK;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/feiyou/groupsdk/core/FYGameSDK$2$1;

    iget-object v6, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$2;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-direct {v5, p0, v6}, Lcom/feiyou/groupsdk/core/FYGameSDK$2$1;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK$2;Lcom/feiyou/groupsdk/core/FYPayCallback;)V

    invoke-interface {v3, v4, v0, v5}, Lcom/duoyou/gamesdk/openapi/IDyApi;->pay(Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/DyPayInfo;Lcom/duoyou/gamesdk/openapi/OnPayCallback;)V

    .line 255
    return-void

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v8}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setRoleLevel(I)V

    goto :goto_0
.end method
