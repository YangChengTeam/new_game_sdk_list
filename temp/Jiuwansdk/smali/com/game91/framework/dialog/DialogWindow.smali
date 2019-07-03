.class public Lcom/game91/framework/dialog/DialogWindow;
.super Landroid/app/DialogFragment;
.source "DialogWindow.java"


# instance fields
.field private mRootView:Landroid/view/View;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/game91/framework/dialog/DialogWindow;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/dialog/DialogWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/game91/framework/dialog/DialogWindow;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "paramInt"    # I
    .param p2, "paramKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected getBackgroundColor()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method protected getDialogHeight()I
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method protected getDialogWidth()I
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method protected getDimAmount()F
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/game91/framework/dialog/DialogWindow;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->dismiss()V

    .line 49
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    const v1, 0x1030074

    invoke-virtual {p0, v0, v1}, Lcom/game91/framework/dialog/DialogWindow;->setStyle(II)V

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "paramLayoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "paramViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x4000400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/game91/framework/dialog/DialogWindow;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/game91/framework/dialog/DialogWindow;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/game91/framework/dialog/DialogWindow;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/game91/framework/dialog/DialogWindow;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/game91/framework/dialog/DialogWindow;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 114
    iget-object v0, p0, Lcom/game91/framework/dialog/DialogWindow;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/game91/framework/dialog/DialogWindow;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 72
    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/game91/framework/dialog/DialogWindow$1;

    invoke-direct {v1, p0}, Lcom/game91/framework/dialog/DialogWindow$1;-><init>(Lcom/game91/framework/dialog/DialogWindow;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getDimAmount()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 85
    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getDialogWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getDialogHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 86
    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->getBackgroundColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_1
    return-void
.end method

.method public setCanCancelable(Z)Lcom/game91/framework/dialog/DialogWindow;
    .locals 0
    .param p1, "paramBoolean"    # Z

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/game91/framework/dialog/DialogWindow;->setCancelable(Z)V

    .line 92
    return-object p0
.end method

.method public setContentView(Landroid/content/Context;I)Lcom/game91/framework/dialog/DialogWindow;
    .locals 2
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramInt"    # I

    .prologue
    .line 96
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/game91/framework/dialog/DialogWindow;->setContentView(Landroid/view/View;)Lcom/game91/framework/dialog/DialogWindow;

    move-result-object v0

    return-object v0
.end method

.method public setContentView(Landroid/view/View;)Lcom/game91/framework/dialog/DialogWindow;
    .locals 0
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/game91/framework/dialog/DialogWindow;->mRootView:Landroid/view/View;

    .line 101
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/game91/framework/dialog/DialogWindow;
    .locals 0
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/game91/framework/dialog/DialogWindow;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 121
    return-object p0
.end method

.method public show(Landroid/app/Activity;)Lcom/game91/framework/dialog/DialogWindow;
    .locals 3
    .param p1, "paramActivity"    # Landroid/app/Activity;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/game91/framework/dialog/DialogWindow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 106
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 107
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 108
    return-object p0
.end method
