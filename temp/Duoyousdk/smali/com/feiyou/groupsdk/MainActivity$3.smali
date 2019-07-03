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

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/MainActivity$3;->this$0:Lcom/feiyou/groupsdk/MainActivity;

    iget-object v2, p0, Lcom/feiyou/groupsdk/MainActivity$3;->this$0:Lcom/feiyou/groupsdk/MainActivity;

    invoke-static {v2}, Lcom/feiyou/groupsdk/MainActivity;->access$1(Lcom/feiyou/groupsdk/MainActivity;)Lcom/feiyou/groupsdk/core/FYPayInfo;

    move-result-object v2

    new-instance v3, Lcom/feiyou/groupsdk/MainActivity$3$1;

    invoke-direct {v3, p0}, Lcom/feiyou/groupsdk/MainActivity$3$1;-><init>(Lcom/feiyou/groupsdk/MainActivity$3;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/feiyou/groupsdk/core/FYGameSDK;->pay(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;)V

    .line 167
    return-void
.end method
