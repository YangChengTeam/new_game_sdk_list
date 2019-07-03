.class Lcom/feiyou/groupsdk/core/FYGameSDK$6$1;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Lcom/game91/framework/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/FYGameSDK$6;->paySuccess(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/game91/framework/callback/Callback",
        "<",
        "Lcom/game91/framework/callback/OrderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/feiyou/groupsdk/core/FYGameSDK$6;

.field private final synthetic val$info:Lcom/feiyou/groupsdk/core/FYPayInfo;

.field private final synthetic val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/FYGameSDK$6;Lcom/feiyou/groupsdk/core/FYPayInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6$1;->this$1:Lcom/feiyou/groupsdk/core/FYGameSDK$6;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6$1;->val$info:Lcom/feiyou/groupsdk/core/FYPayInfo;

    iput-object p3, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6$1;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/game91/framework/callback/OrderInfo;)V
    .locals 4
    .param p1, "orderInfo"    # Lcom/game91/framework/callback/OrderInfo;

    .prologue
    .line 193
    new-instance v0, Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-direct {v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;-><init>()V

    .line 194
    .local v0, "resultInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Lcom/game91/framework/callback/OrderInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/feiyou/groupsdk/core/FYErrorCode;->SUCCESS:Lcom/feiyou/groupsdk/core/FYErrorCode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setCode(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setData(Ljava/lang/Object;)V

    .line 196
    new-instance v1, Lcom/feiyou/groupsdk/core/RoleInfo;

    invoke-direct {v1}, Lcom/feiyou/groupsdk/core/RoleInfo;-><init>()V

    .line 198
    .local v1, "roleInfo":Lcom/feiyou/groupsdk/core/RoleInfo;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/feiyou/groupsdk/core/RoleInfo;->setDataType(I)V

    .line 199
    iget-object v2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6$1;->val$info:Lcom/feiyou/groupsdk/core/FYPayInfo;

    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/feiyou/groupsdk/core/RoleInfo;->setCpUid(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6$1;->val$info:Lcom/feiyou/groupsdk/core/FYPayInfo;

    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/feiyou/groupsdk/core/RoleInfo;->setRoleId(Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6$1;->val$info:Lcom/feiyou/groupsdk/core/FYPayInfo;

    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/feiyou/groupsdk/core/RoleInfo;->setRoleLevel(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6$1;->val$info:Lcom/feiyou/groupsdk/core/FYPayInfo;

    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/feiyou/groupsdk/core/RoleInfo;->setServerID(Ljava/lang/String;)V

    .line 203
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/feiyou/groupsdk/core/RoleInfo;->setVip(Ljava/lang/String;)V

    .line 204
    const-string v2, "\u6682\u65e0"

    invoke-virtual {v1, v2}, Lcom/feiyou/groupsdk/core/RoleInfo;->setUnion(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6$1;->this$1:Lcom/feiyou/groupsdk/core/FYGameSDK$6;

    invoke-static {v2}, Lcom/feiyou/groupsdk/core/FYGameSDK$6;->access$0(Lcom/feiyou/groupsdk/core/FYGameSDK$6;)Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/feiyou/groupsdk/core/FYGameSDK;->submitRole(Lcom/feiyou/groupsdk/core/RoleInfo;)V

    .line 208
    iget-object v2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$6$1;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-virtual {v2, v0}, Lcom/feiyou/groupsdk/core/FYPayCallback;->paySuccess(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 210
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game91/framework/callback/OrderInfo;

    invoke-virtual {p0, p1}, Lcom/feiyou/groupsdk/core/FYGameSDK$6$1;->call(Lcom/game91/framework/callback/OrderInfo;)V

    return-void
.end method
