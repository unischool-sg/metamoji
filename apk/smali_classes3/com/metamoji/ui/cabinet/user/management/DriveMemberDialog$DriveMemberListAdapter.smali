.class public Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DriveMemberDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DriveMemberListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field _isOwner:Z

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    const/4 p1, 0x0

    .line 280
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 281
    iput-boolean p3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->_isOwner:Z

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 289
    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_cabinet_drive_member_listitem:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 292
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 293
    const-string p3, "isOwner"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v0

    .line 295
    :goto_0
    sget v2, Lcom/metamoji/noteanytime/R$id;->check:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 296
    iget-boolean v3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->_isOwner:Z

    if-eqz v3, :cond_4

    if-eqz p3, :cond_2

    const/4 v0, 0x4

    .line 298
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 300
    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 301
    const-string v3, "checked"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 302
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    .line 305
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 308
    :goto_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->roleImage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 309
    const-string v3, "isTeacher"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 311
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->school_user_teacher:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 313
    :cond_5
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->school_user_student:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    :goto_2
    sget v0, Lcom/metamoji/noteanytime/R$id;->loginName:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 316
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v3

    .line 317
    const-string v4, "loginName"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 318
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v3, :cond_7

    .line 319
    :cond_6
    const-string v4, ""

    .line 321
    :cond_7
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    sget v0, Lcom/metamoji/noteanytime/R$id;->nameText:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 324
    const-string v3, "name"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 325
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 326
    :cond_8
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdMemberNoNickname:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 329
    :cond_9
    const-string/jumbo v4, "status"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_a

    .line 331
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    .line 332
    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/metamoji/noteanytime/R$string;->MailAddrDlg_TableRowPrefixInviting:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 331
    const-string v4, "[%s] %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 334
    :cond_a
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    :goto_3
    sget v3, Lcom/metamoji/noteanytime/R$id;->roleText:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 338
    const-string/jumbo v4, "type"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_e

    if-eq v4, v1, :cond_d

    const/4 v1, 0x2

    if-eq v4, v1, :cond_c

    const/4 v1, 0x3

    if-eq v4, v1, :cond_b

    goto :goto_4

    .line 349
    :cond_b
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdDriveViewer:I

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 346
    :cond_c
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdDriveAdmin:I

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 343
    :cond_d
    sget v1, Lcom/metamoji/noteanytime/R$string;->CabinetSdUserTypeOwnew:I

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 340
    :cond_e
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdDriveEditor:I

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 355
    :goto_4
    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->_isOwner:Z

    if-eqz v1, :cond_f

    if-nez p3, :cond_f

    .line 356
    new-instance p3, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter$1;

    invoke-direct {p3, p0, v2, p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;Landroid/widget/CheckBox;Ljava/util/Map;)V

    .line 365
    invoke-virtual {v2, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    return-object p2
.end method
