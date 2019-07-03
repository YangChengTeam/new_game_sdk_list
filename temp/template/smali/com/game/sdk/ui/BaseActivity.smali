.class public abstract Lcom/game/sdk/ui/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# instance fields
.field public fyGmaeSDk:Lcom/game/sdk/FYGameSDK;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private callOnResume(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    if-nez p1, :cond_1

    .line 57
    const-string v2, "Game Activity is null"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const/4 v1, 0x0

    .line 63
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onResume"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 65
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v2, "Game Activity callOnResume---Is Ok--->"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/game/sdk/ui/BaseActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/game/sdk/ui/BaseActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v2}, Lcom/game/sdk/FYGameSDK;->removeFloatButton()V

    .line 70
    const-string v2, "callOnResume---removeFloatButton--->"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public findButtonByString(Ljava/lang/String;)Landroid/widget/Button;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public findIdByString(Ljava/lang/String;)I
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, "id"

    invoke-static {p0, v0, p1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public findStringByResId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/game/sdk/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-static {p0, v1, p1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public findViewByString(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->findIdByString(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLayoutId()Ljava/lang/String;
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public initVars()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public initViews()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const-string v0, "layout"

    invoke-virtual {p0}, Lcom/game/sdk/ui/BaseActivity;->getLayoutId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/BaseActivity;->setContentView(I)V

    .line 28
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/BaseActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    .line 29
    invoke-virtual {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 30
    invoke-virtual {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 31
    invoke-virtual {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 32
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 50
    const-string v0, "onresume---start--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 52
    const-string v0, "onresume---end--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 53
    return-void
.end method
