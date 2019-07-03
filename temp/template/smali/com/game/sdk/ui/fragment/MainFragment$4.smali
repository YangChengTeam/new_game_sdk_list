.class Lcom/game/sdk/ui/fragment/MainFragment$4;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/MainFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/MainFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$23(Lcom/game/sdk/ui/fragment/MainFragment;)I

    move-result v7

    iget-object v8, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v8}, Lcom/game/sdk/ui/fragment/MainFragment;->access$24(Lcom/game/sdk/ui/fragment/MainFragment;)I

    move-result v8

    mul-int/2addr v7, v8

    add-int v3, p3, v7

    .line 447
    .local v3, "pos":I
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    iget-object v7, v7, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    iget-object v7, v7, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 448
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    iget-object v7, v7, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/domain/ModuleInfo;

    .line 450
    .local v2, "moduleInfo":Lcom/game/sdk/domain/ModuleInfo;
    iget v7, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v7, :cond_0

    iget-object v7, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v8, "SERVER_CALL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 453
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    const-string v8, "call_service"

    invoke-static {v7, v8}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 455
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    new-instance v8, Lcom/game/sdk/view/ServiceDialog;

    iget-object v9, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v9}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v9

    const v10, 0x3f19999a    # 0.6f

    invoke-direct {v8, v9, v10}, Lcom/game/sdk/view/ServiceDialog;-><init>(Landroid/app/Activity;F)V

    invoke-static {v7, v8}, Lcom/game/sdk/ui/fragment/MainFragment;->access$25(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/view/ServiceDialog;)V

    .line 456
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$26(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/view/ServiceDialog;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/game/sdk/view/ServiceDialog;->setCanceledOnTouchOutside(Z)V

    .line 457
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$26(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/view/ServiceDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/game/sdk/view/ServiceDialog;->show()V

    .line 459
    :cond_0
    iget v7, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v7, :cond_1

    iget-object v7, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v8, "COMPAIGN_CENTER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 461
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    const-string v8, "active_center"

    invoke-static {v7, v8}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 462
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 464
    :cond_1
    iget v7, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v7, :cond_2

    iget-object v7, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v8, "CHARGE_RECORD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 471
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 473
    :cond_2
    iget v7, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v7, :cond_3

    iget-object v7, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v8, "SCORE_STORE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 480
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 483
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    const-string v8, "score_open_game_box"

    invoke-static {v7, v8}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 485
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v7}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "pwd":Ljava/lang/String;
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v7}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 488
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v7, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 490
    .local v1, "mobile":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "gamebox://?act=GoodTypeActivity&pwd="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&phone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 491
    const-string v8, "&username="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 490
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 493
    .local v6, "uri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u79ef\u5206\u5546\u57ceURI---"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 494
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 495
    .local v0, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/game/sdk/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 501
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v4    # "pwd":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_1
    iget v7, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v7, :cond_4

    iget-object v7, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v8, "GAME_PACKAGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 515
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 518
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    const-string v8, "package_open_game_box"

    invoke-static {v7, v8}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 520
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v7}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 522
    .restart local v4    # "pwd":Ljava/lang/String;
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v7}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 523
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v7, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 526
    .restart local v1    # "mobile":Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "{\"game_id\":\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\", \"game_name\":\"\"}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 525
    invoke-static {v7}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, "tempData":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "gamebox://?act=GiftListActivity&pwd="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&phone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 528
    const-string v8, "&username="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 527
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 530
    .restart local v6    # "uri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u6e38\u620f\u793c\u5305URI---"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 531
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 532
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/game/sdk/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 539
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v4    # "pwd":Ljava/lang/String;
    .end local v5    # "tempData":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_3
    iget v7, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v7, :cond_5

    iget-object v7, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v8, "ACCOUNT_SAFETY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 540
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    const-string v8, "account_safety"

    invoke-static {v7, v8}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 541
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 545
    :cond_5
    iget v7, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v7, :cond_6

    iget-object v7, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v8, "GAME_CENTER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 546
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 549
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    const-string v8, "gamecenter_open_game_box"

    invoke-static {v7, v8}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 551
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v7}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 553
    .restart local v4    # "pwd":Ljava/lang/String;
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v7}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 554
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v7, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 556
    .restart local v1    # "mobile":Ljava/lang/String;
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "gamebox://?act=MainActivity&pwd="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&phone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 557
    const-string v8, "&username="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 556
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 559
    .restart local v6    # "uri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u6e38\u620f\u4e2d\u5fc3---"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 560
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 561
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v7}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/game/sdk/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 568
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v2    # "moduleInfo":Lcom/game/sdk/domain/ModuleInfo;
    .end local v4    # "pwd":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_6
    :goto_5
    return-void

    .line 488
    .restart local v2    # "moduleInfo":Lcom/game/sdk/domain/ModuleInfo;
    .restart local v4    # "pwd":Ljava/lang/String;
    :cond_7
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v7, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto/16 :goto_0

    .line 497
    .end local v4    # "pwd":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/fragment/MainFragment;->gameBoxDown(I)V

    goto/16 :goto_1

    .line 523
    .restart local v4    # "pwd":Ljava/lang/String;
    :cond_9
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v7, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto/16 :goto_2

    .line 535
    .end local v4    # "pwd":Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/fragment/MainFragment;->gameBoxDown(I)V

    goto/16 :goto_3

    .line 554
    .restart local v4    # "pwd":Ljava/lang/String;
    :cond_b
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v7, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto :goto_4

    .line 563
    .end local v4    # "pwd":Ljava/lang/String;
    :cond_c
    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment$4;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/game/sdk/ui/fragment/MainFragment;->gameBoxDown(I)V

    goto :goto_5
.end method
