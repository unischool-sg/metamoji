.class Lcom/metamoji/noteanytime/MainActivity$53;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->changeBtnSyncWaitImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$syncBtn:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3558
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$53;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$53;->val$syncBtn:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3561
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->WaitSync:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    sput-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_SyncButtonMode:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    .line 3562
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3563
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$53;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3564
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->syncbutton_normal_matginleft:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/metamoji/noteanytime/R$dimen;->syncbutton_normal_matgintop:I

    .line 3565
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/metamoji/noteanytime/R$dimen;->syncbutton_normal_matginright:I

    .line 3566
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/metamoji/noteanytime/R$dimen;->syncbutton_normal_matginbottom:I

    .line 3567
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3564
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x42580000    # 54.0f

    .line 3568
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3570
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$53;->val$syncBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3572
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$53;->val$syncBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    .line 3575
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$53;->val$syncBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3573
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$53;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_icon_sync_wait_n:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 3575
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$53;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_icon_sync_wait_d:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
