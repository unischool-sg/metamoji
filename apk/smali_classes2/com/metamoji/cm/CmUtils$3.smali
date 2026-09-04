.class Lcom/metamoji/cm/CmUtils$3;
.super Ljava/lang/Object;
.source "CmUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/CmUtils;->confirmDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onOK:Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1476
    iput-object p1, p0, Lcom/metamoji/cm/CmUtils$3;->val$onOK:Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1480
    iget-object v0, p0, Lcom/metamoji/cm/CmUtils$3;->val$onOK:Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cm/CmUtils$NoReentrantOnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
