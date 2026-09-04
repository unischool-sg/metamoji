.class Lcom/metamoji/ns/direction/NsRecvInvoker$2;
.super Ljava/lang/Object;
.source "NsRecvInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsRecvInvoker;->setLogMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsRecvInvoker;

.field final synthetic val$sw:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsRecvInvoker;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker$2;->this$0:Lcom/metamoji/ns/direction/NsRecvInvoker;

    iput-boolean p2, p0, Lcom/metamoji/ns/direction/NsRecvInvoker$2;->val$sw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsRecvInvoker$2;->this$0:Lcom/metamoji/ns/direction/NsRecvInvoker;

    iget-boolean v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker$2;->val$sw:Z

    invoke-static {v0, v1}, Lcom/metamoji/ns/direction/NsRecvInvoker;->-$$Nest$fputmLogMode(Lcom/metamoji/ns/direction/NsRecvInvoker;Z)V

    return-void
.end method
