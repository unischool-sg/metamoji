.class Lcom/metamoji/media/voice/ui/VcPlayerBar$26;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->didUpdateModel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field final synthetic val$doForce:Z


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V
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

    .line 1299
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$26;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput-boolean p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$26;->val$doForce:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1301
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$26;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$26;->val$doForce:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateAll(Z)V

    return-void
.end method
