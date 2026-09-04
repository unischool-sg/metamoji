.class Lcom/metamoji/ns/NsCollaboUtils$1;
.super Ljava/lang/Object;
.source "NsCollaboUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/ns/INsCollaboAction;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboUtils$1;->val$message:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboUtils$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboUtils$1;->val$action:Lcom/metamoji/ns/INsCollaboAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboUtils$1;->val$message:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboUtils$1;->val$title:Ljava/lang/String;

    new-instance v2, Lcom/metamoji/ns/NsCollaboUtils$1$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/NsCollaboUtils$1$1;-><init>(Lcom/metamoji/ns/NsCollaboUtils$1;)V

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
