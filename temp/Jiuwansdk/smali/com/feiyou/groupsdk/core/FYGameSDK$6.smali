.class Lcom/feiyou/groupsdk/core/FYGameSDK$6;
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

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    .line 166
    invoke-direct {p0}, Lcom/feiyou/groupsdk/core/FYPayCallback;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/feiyou/groupsdk/core/FYGameSDK$6;)Lcom/feiyou/groupsdk/core/FYGameSDK;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    return-object v0
.end method


# virtual methods
.method public payCancel(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    .locals 1
    .param p1, "resultInfo"    # Lcom/feiyou/groupsdk/core/FYResultInfo;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-virtual {v0, p1}, Lcom/feiyou/groupsdk/core/FYPayCallback;->payCancel(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 233
    return-void
.end method

.method public payFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    .locals 1
    .param p1, "resultInfo"    # Lcom/feiyou/groupsdk/core/FYResultInfo;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-virtual {v0, p1}, Lcom/feiyou/groupsdk/core/FYPayCallback;->payFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 228
    return-void
.end method

.method public paySuccess(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    .locals 7
    .param p1, "resultInfo"    # Lcom/feiyou/groupsdk/core/FYResultInfo;

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feiyou/groupsdk/core/FYPayInfo;

    .line 172
    .local v0, "info":Lcom/feiyou/groupsdk/core/FYPayInfo;
    new-instance v1, Lcom/game91/framework/callback/PayInfo;

    invoke-direct {v1}, Lcom/game91/framework/callback/PayInfo;-><init>()V

    .line 174
    .local v1, "payInfo":Lcom/game91/framework/callback/PayInfo;
    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getMoney()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/framework/callback/PayInfo;->setProductId(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    move-result-object v2

    .line 175
    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/game91/framework/callback/PayInfo;->setProductName(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    move-result-object v2

    .line 176
    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/game91/framework/callback/PayInfo;->setProductDesc(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    move-result-object v2

    .line 177
    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getMoney()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/game91/framework/callback/PayInfo;->setPrice(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    move-result-object v2

    .line 178
    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getAttach()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/game91/framework/callback/PayInfo;->setOrderId(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    move-result-object v2

    .line 179
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/game91/framework/callback/PayInfo;->setBuyNum(I)Lcom/game91/framework/callback/PayInfo;

    move-result-object v2

    .line 180
    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/game91/framework/callback/PayInfo;->setCoinNum(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    move-result-object v2

    .line 181
    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/game91/framework/callback/PayInfo;->setServerID(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    move-result-object v2

    .line 182
    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/game91/framework/callback/PayInfo;->setServerName(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    move-result-object v2

    .line 183
    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getRole()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/game91/framework/callback/PayInfo;->setRoleID(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    move-result-object v2

    .line 184
    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getRole()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/game91/framework/callback/PayInfo;->setRoleName(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    move-result-object v2

    .line 185
    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getRole()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/game91/framework/callback/PayInfo;->setRoleLevel(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    move-result-object v2

    .line 186
    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/game91/framework/callback/PayInfo;->setVip(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;

    .line 189
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v2

    iget-object v3, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6;->val$activity:Landroid/app/Activity;

    new-instance v4, Lcom/feiyou/groupsdk/core/FYGameSDK$6$1;

    iget-object v5, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-direct {v4, p0, v0, v5}, Lcom/feiyou/groupsdk/core/FYGameSDK$6$1;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK$6;Lcom/feiyou/groupsdk/core/FYPayInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;)V

    .line 211
    new-instance v5, Lcom/feiyou/groupsdk/core/FYGameSDK$6$2;

    iget-object v6, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-direct {v5, p0, v6}, Lcom/feiyou/groupsdk/core/FYGameSDK$6$2;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK$6;Lcom/feiyou/groupsdk/core/FYPayCallback;)V

    .line 189
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/game91/framework/NineGame;->doPay(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 223
    return-void
.end method
