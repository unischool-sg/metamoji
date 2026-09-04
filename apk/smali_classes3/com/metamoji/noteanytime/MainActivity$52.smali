.class Lcom/metamoji/noteanytime/MainActivity$52;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->changeBtnSyncImageNormal(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V
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

    .line 3530
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$52;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$52;->val$syncBtn:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3533
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->Normal:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    sput-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_SyncButtonMode:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    .line 3534
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3536
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$52;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x42580000    # 54.0f

    .line 3544
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3545
    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$52;->val$syncBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3547
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$52;->val$syncBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    .line 3550
    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$52;->val$syncBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3548
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_icon_refresh:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 3550
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_icon_refresh_d:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
