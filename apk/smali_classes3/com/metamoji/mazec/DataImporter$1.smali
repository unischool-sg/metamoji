.class Lcom/metamoji/mazec/DataImporter$1;
.super Ljava/lang/Object;
.source "DataImporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/DataImporter;

.field final synthetic val$err:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/DataImporter;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lcom/metamoji/mazec/DataImporter$1;->this$0:Lcom/metamoji/mazec/DataImporter;

    iput p2, p0, Lcom/metamoji/mazec/DataImporter$1;->val$status:I

    iput p3, p0, Lcom/metamoji/mazec/DataImporter$1;->val$err:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/metamoji/mazec/DataImporter$1;->this$0:Lcom/metamoji/mazec/DataImporter;

    iget-object v0, v0, Lcom/metamoji/mazec/DataImporter;->mStatusListener:Lcom/metamoji/mazec/DataImporter$StatusListener;

    iget v1, p0, Lcom/metamoji/mazec/DataImporter$1;->val$status:I

    iget v2, p0, Lcom/metamoji/mazec/DataImporter$1;->val$err:I

    invoke-interface {v0, v1, v2}, Lcom/metamoji/mazec/DataImporter$StatusListener;->statusChanged(II)V

    return-void
.end method
