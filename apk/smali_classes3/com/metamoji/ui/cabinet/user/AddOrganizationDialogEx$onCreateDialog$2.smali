.class public final Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2;
.super Ljava/lang/Object;
.source "AddOrganizationDialogEx.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2",
        "Landroid/view/View$OnClickListener;",
        "onClick",
        "",
        "v",
        "Landroid/view/View;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final onClick$lambda$0(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 2

    if-eqz p4, :cond_4

    .line 233
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->getServerURL()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getServerURL(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->access$setServerURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;Ljava/lang/String;)V

    .line 234
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->access$getServerURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "_lblServerURL"

    const/4 p3, 0x0

    if-nez p1, :cond_2

    .line 236
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->access$getServerURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    const/4 v0, 0x2

    const-string v1, "/"

    invoke-static {p1, v1, p4, v0, p3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 237
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->access$getServerURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->access$setServerURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;Ljava/lang/String;)V

    .line 239
    :cond_0
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->access$get_lblServerURL$p(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)Lcom/metamoji/ui/common/UiTextView;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p3, p1

    :goto_0
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->access$getServerURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 241
    :cond_2
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->access$get_lblServerURL$p(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)Lcom/metamoji/ui/common/UiTextView;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object p3, p0

    :goto_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Url_Comment:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getBusy()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    const-class p1, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 225
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 229
    :cond_1
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->access$getServerURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->setServerURL(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 245
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
