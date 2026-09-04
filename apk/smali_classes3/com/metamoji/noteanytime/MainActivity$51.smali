.class Lcom/metamoji/noteanytime/MainActivity$51;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3412
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$51;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3420
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$51;->val$activity:Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3424
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_refresh_button:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto :goto_1

    .line 3432
    :cond_1
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v1

    .line 3433
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 3436
    sget-boolean v1, Lcom/metamoji/noteanytime/MainActivity;->_IsShareViewMode:Z

    if-eqz v1, :cond_2

    .line 3437
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3440
    :cond_2
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$sfgetstatic_startSyncFlg()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3441
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3442
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$51;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v0}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smchangeBtnSyncCancelImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    return-void

    .line 3444
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3445
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$51;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v0}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smchangeBtnSyncImageNormal(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    return-void

    .line 3449
    :cond_4
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$sfgetstatic_startSyncFlg()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3450
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 3452
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3454
    :goto_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$51;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v0}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smchangeSyncButtonImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    .line 3456
    sget-boolean v1, Lcom/metamoji/noteanytime/MainActivity;->_IsShareViewMode:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    .line 3457
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method
