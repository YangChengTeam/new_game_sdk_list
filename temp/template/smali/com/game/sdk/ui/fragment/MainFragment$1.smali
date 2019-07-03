.class Lcom/game/sdk/ui/fragment/MainFragment$1;
.super Landroid/os/Handler;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/MainFragment;
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
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    .line 194
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$0(Lcom/game/sdk/ui/fragment/MainFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$0(Lcom/game/sdk/ui/fragment/MainFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$0(Lcom/game/sdk/ui/fragment/MainFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$0(Lcom/game/sdk/ui/fragment/MainFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/adapter/MainModuleAdapter;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/game/sdk/adapter/MainModuleAdapter;->addNewList(Ljava/util/List;)V

    .line 202
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$0(Lcom/game/sdk/ui/fragment/MainFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/adapter/MainModuleAdapter;

    invoke-virtual {v1}, Lcom/game/sdk/adapter/MainModuleAdapter;->notifyDataSetChanged()V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-virtual {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->initViewPager()V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-virtual {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->initGuidePop()V

    .line 214
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$2(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$3(Lcom/game/sdk/ui/fragment/MainFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v1

    const-string v2, "is_show_guide"

    invoke-virtual {v1, v2, v5}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/MainFragment;->access$2(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 219
    :cond_2
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/MainFragment;->access$5(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/view/CustomRoundImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$6(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v2

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$7(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$8(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v2

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$9(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v2

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v1, v1, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v1, v5, :cond_4

    .line 228
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "phone_bind_icon"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/MainFragment;->access$10(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 232
    :cond_4
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v1, v1, Lcom/game/sdk/domain/UserInfo;->vipLevel:I

    if-lez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$11(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment$1;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v2

    const-string v3, "drawable"

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "member_level"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v5, v5, Lcom/game/sdk/domain/UserInfo;->vipLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 223
    :cond_5
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    goto/16 :goto_2

    .line 225
    :cond_6
    const-string v1, "0"

    goto :goto_3

    .line 226
    :cond_7
    const-string v1, "0"

    goto :goto_4

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
