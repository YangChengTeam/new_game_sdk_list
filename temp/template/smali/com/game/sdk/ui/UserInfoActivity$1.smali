.class Lcom/game/sdk/ui/UserInfoActivity$1;
.super Landroid/os/Handler;
.source "UserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/UserInfoActivity$1;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    .line 105
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 109
    :pswitch_0
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$1;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity$1;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v2}, Lcom/game/sdk/ui/UserInfoActivity;->access$2(Lcom/game/sdk/ui/UserInfoActivity;)Lcom/game/sdk/view/CustomRoundImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 111
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity$1;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "\u4fee\u6539\u6210\u529f"

    goto :goto_1

    .line 116
    :pswitch_1
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$1;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity$1;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v2}, Lcom/game/sdk/ui/UserInfoActivity;->access$2(Lcom/game/sdk/ui/UserInfoActivity;)Lcom/game/sdk/view/CustomRoundImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$1;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/UserInfoActivity;->access$3(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const-string v0, ""

    .line 123
    .local v0, "tempSex":Ljava/lang/String;
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v1, v1, Lcom/game/sdk/domain/UserInfo;->sex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 124
    const-string v0, "\u7537"

    .line 130
    :goto_3
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$1;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/UserInfoActivity;->access$4(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$1;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/UserInfoActivity;->access$5(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->birth:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$1;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/UserInfoActivity;->access$6(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$1;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/UserInfoActivity;->access$7(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$1;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/UserInfoActivity;->access$8(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->qq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "tempSex":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    goto :goto_2

    .line 125
    .restart local v0    # "tempSex":Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v1, v1, Lcom/game/sdk/domain/UserInfo;->sex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 126
    const-string v0, "\u5973"

    .line 127
    goto :goto_3

    .line 128
    :cond_5
    const-string v0, "\u672a\u77e5"

    goto :goto_3

    .line 137
    .end local v0    # "tempSex":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$1;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    const-string v2, "\u4fee\u6539\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
