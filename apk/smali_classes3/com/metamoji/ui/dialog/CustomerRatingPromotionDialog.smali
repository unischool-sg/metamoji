.class public Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "CustomerRatingPromotionDialog.java"


# static fields
.field static final mNoteLiteReviewUrl:Ljava/lang/String; = "http://getnoteanytime.metamoji.com/?app=NF"

.field static final mNoteReviewUrl:Ljava/lang/String; = "http://getnoteanytime.metamoji.com/?app=NP"

.field static final mShareLiteReviewUrl:Ljava/lang/String; = "http://getshareanytime.metamoji.com/?app=SF"

.field static final mShareReviewUrl:Ljava/lang/String; = "http://getshareanytime.metamoji.com/?app=SP"

.field static mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 26
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_customer_promotion:I

    iput v0, p0, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;->mViewId:I

    .line 27
    sget v0, Lcom/metamoji/noteanytime/R$string;->Promotion_Customer_Rating_Title:I

    iput v0, p0, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;->mTitleId:I

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;->mDone:Z

    .line 29
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;->mCancel:Z

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;->mClose:Z

    .line 31
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;->mBackgroundBlack:Z

    .line 37
    const-string v0, "http://getshareanytime.metamoji.com/?app=SP"

    sput-object v0, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;->mUrl:Ljava/lang/String;

    .line 46
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 48
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_customer_promo_btn:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog$1;-><init>(Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;->restoreInstanceStateIfAvailable(Landroid/app/Dialog;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
