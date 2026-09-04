.class Lcom/metamoji/cm/CmUtils$2$1;
.super Ljava/lang/Object;
.source "CmUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/CmUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cm/CmUtils$2;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/CmUtils$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1429
    iput-object p1, p0, Lcom/metamoji/cm/CmUtils$2$1;->this$0:Lcom/metamoji/cm/CmUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1432
    iget-object p1, p0, Lcom/metamoji/cm/CmUtils$2$1;->this$0:Lcom/metamoji/cm/CmUtils$2;

    iget-object p1, p1, Lcom/metamoji/cm/CmUtils$2;->val$so:Lcom/metamoji/cm/CmUtils$SyncObj;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmUtils$SyncObj;->setResult(Z)V

    return-void
.end method
