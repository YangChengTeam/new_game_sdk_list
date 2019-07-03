.class Lcom/feiyou/groupsdk/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feiyou/groupsdk/MainActivity;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/MainActivity$3;->this$0:Lcom/feiyou/groupsdk/MainActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    new-instance v0, Lcom/feiyou/groupsdk/core/FYPayInfo;

    invoke-direct {v0}, Lcom/feiyou/groupsdk/core/FYPayInfo;-><init>()V

    .line 111
    .local v0, "payInfo":Lcom/feiyou/groupsdk/core/FYPayInfo;
    const-string v1, "208"

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setUserId(Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setAppId(I)V

    .line 113
    const/16 v1, 0x35a

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setOrderMoney(I)V

    .line 114
    const-string v1, "%E6%B5%8B%E8%AF%95%E6%9C%8D%E5%8A%A1%E5%99%A8"

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setServerId(Ljava/lang/String;)V

    .line 115
    const-string v1, "OS5a587464aa932"

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setAttach(Ljava/lang/String;)V

    .line 116
    const-string v1, "127.0.0.1"

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setIp(Ljava/lang/String;)V

    .line 117
    const-string v1, "%E6%B5%8B%E8%AF%95%E8%A7%92%E8%89%B2"

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setRole(Ljava/lang/String;)V

    .line 118
    const-string v1, "a67375a5af5e5b25443ca85c9e7fe9f8"

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setSign(Ljava/lang/String;)V

    .line 119
    const-string v1, "%E6%B8%B8%E6%88%8F%E5%85%85%E5%80%BC"

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setProductName(Ljava/lang/String;)V

    .line 120
    const-string v1, "50"

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYPayInfo;->setLevel(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/feiyou/groupsdk/MainActivity$3;->this$0:Lcom/feiyou/groupsdk/MainActivity;

    new-instance v3, Lcom/feiyou/groupsdk/MainActivity$3$1;

    invoke-direct {v3, p0}, Lcom/feiyou/groupsdk/MainActivity$3$1;-><init>(Lcom/feiyou/groupsdk/MainActivity$3;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/feiyou/groupsdk/core/FYGameSDK;->pay(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;)V

    .line 144
    return-void
.end method
