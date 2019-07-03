.class public Lcom/feiyou/groupsdk/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private mLoginBtn:Landroid/widget/Button;

.field private mPayBtn:Landroid/widget/Button;

.field private mlogoutBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/feiyou/groupsdk/MainActivity;->setContentView(I)V

    .line 36
    const/high16 v0, 0x7f080000

    invoke-virtual {p0, v0}, Lcom/feiyou/groupsdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->mLoginBtn:Landroid/widget/Button;

    .line 37
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/feiyou/groupsdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->mPayBtn:Landroid/widget/Button;

    .line 38
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/feiyou/groupsdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->mlogoutBtn:Landroid/widget/Button;

    .line 42
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    new-instance v1, Lcom/feiyou/groupsdk/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/feiyou/groupsdk/MainActivity$1;-><init>(Lcom/feiyou/groupsdk/MainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/feiyou/groupsdk/core/FYGameSDK;->initSDK(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYInitCallback;)V

    .line 69
    iget-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->mLoginBtn:Landroid/widget/Button;

    new-instance v1, Lcom/feiyou/groupsdk/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/feiyou/groupsdk/MainActivity$2;-><init>(Lcom/feiyou/groupsdk/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->mPayBtn:Landroid/widget/Button;

    new-instance v1, Lcom/feiyou/groupsdk/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/feiyou/groupsdk/MainActivity$3;-><init>(Lcom/feiyou/groupsdk/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/feiyou/groupsdk/MainActivity;->mlogoutBtn:Landroid/widget/Button;

    new-instance v1, Lcom/feiyou/groupsdk/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/feiyou/groupsdk/MainActivity$4;-><init>(Lcom/feiyou/groupsdk/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 159
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->showFloatButton()V

    .line 161
    return-void
.end method
