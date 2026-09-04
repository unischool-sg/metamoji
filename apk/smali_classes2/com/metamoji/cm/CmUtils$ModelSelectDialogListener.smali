.class Lcom/metamoji/cm/CmUtils$ModelSelectDialogListener;
.super Ljava/lang/Object;
.source "CmUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/CmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelSelectDialogListener"
.end annotation


# instance fields
.field hasResult:Z

.field syncObj:Lcom/metamoji/cm/CmUtils$SyncObj;


# direct methods
.method public constructor <init>(Lcom/metamoji/cm/CmUtils$SyncObj;)V
    .locals 0

    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1342
    iput-object p1, p0, Lcom/metamoji/cm/CmUtils$ModelSelectDialogListener;->syncObj:Lcom/metamoji/cm/CmUtils$SyncObj;

    const/4 p1, 0x0

    .line 1343
    iput-boolean p1, p0, Lcom/metamoji/cm/CmUtils$ModelSelectDialogListener;->hasResult:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1356
    iget-boolean p1, p0, Lcom/metamoji/cm/CmUtils$ModelSelectDialogListener;->hasResult:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1357
    iput-boolean p1, p0, Lcom/metamoji/cm/CmUtils$ModelSelectDialogListener;->hasResult:Z

    .line 1358
    iget-object v0, p0, Lcom/metamoji/cm/CmUtils$ModelSelectDialogListener;->syncObj:Lcom/metamoji/cm/CmUtils$SyncObj;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmUtils$SyncObj;->setResult(Z)V

    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1348
    iget-boolean p1, p0, Lcom/metamoji/cm/CmUtils$ModelSelectDialogListener;->hasResult:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1349
    iput-boolean p1, p0, Lcom/metamoji/cm/CmUtils$ModelSelectDialogListener;->hasResult:Z

    .line 1350
    iget-object p1, p0, Lcom/metamoji/cm/CmUtils$ModelSelectDialogListener;->syncObj:Lcom/metamoji/cm/CmUtils$SyncObj;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmUtils$SyncObj;->setResult(Z)V

    :cond_0
    return-void
.end method
