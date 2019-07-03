.class Lcom/feiyou/groupsdk/MainActivity$2;
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
    iput-object p1, p0, Lcom/feiyou/groupsdk/MainActivity$2;->this$0:Lcom/feiyou/groupsdk/MainActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/MainActivity$2;->this$0:Lcom/feiyou/groupsdk/MainActivity;

    new-instance v2, Lcom/feiyou/groupsdk/MainActivity$2$1;

    invoke-direct {v2, p0}, Lcom/feiyou/groupsdk/MainActivity$2$1;-><init>(Lcom/feiyou/groupsdk/MainActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/feiyou/groupsdk/core/FYGameSDK;->login(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V

    .line 88
    return-void
.end method
