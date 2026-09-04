.class Lcom/metamoji/cm/CmUtils$1;
.super Ljava/lang/Object;
.source "CmUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/CmUtils;->modalSelectDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$negative:Ljava/lang/String;

.field final synthetic val$positive:Ljava/lang/String;

.field final synthetic val$so:Lcom/metamoji/cm/CmUtils$SyncObj;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/CmUtils$SyncObj;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1380
    iput-object p1, p0, Lcom/metamoji/cm/CmUtils$1;->val$so:Lcom/metamoji/cm/CmUtils$SyncObj;

    iput-object p2, p0, Lcom/metamoji/cm/CmUtils$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/metamoji/cm/CmUtils$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/cm/CmUtils$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/cm/CmUtils$1;->val$positive:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/cm/CmUtils$1;->val$negative:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1383
    new-instance v0, Lcom/metamoji/cm/CmUtils$ModelSelectDialogListener;

    iget-object v1, p0, Lcom/metamoji/cm/CmUtils$1;->val$so:Lcom/metamoji/cm/CmUtils$SyncObj;

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmUtils$ModelSelectDialogListener;-><init>(Lcom/metamoji/cm/CmUtils$SyncObj;)V

    .line 1385
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->-$$Nest$sfget_uiProvider()Lcom/metamoji/cm/ICmUIProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/cm/CmUtils$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-interface {v1, v2}, Lcom/metamoji/cm/ICmUIProvider;->createAlertDialogBuilder(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 1386
    iget-object v2, p0, Lcom/metamoji/cm/CmUtils$1;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1387
    iget-object v2, p0, Lcom/metamoji/cm/CmUtils$1;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1388
    iget-object v2, p0, Lcom/metamoji/cm/CmUtils$1;->val$positive:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1389
    iget-object v2, p0, Lcom/metamoji/cm/CmUtils$1;->val$negative:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v2, 0x0

    .line 1391
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1392
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->-$$Nest$sfget_uiProvider()Lcom/metamoji/cm/ICmUIProvider;

    move-result-object v2

    const-string v3, "modalSelectDialog"

    invoke-interface {v2, v1, v0, v3}, Lcom/metamoji/cm/ICmUIProvider;->showAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V

    return-void
.end method
