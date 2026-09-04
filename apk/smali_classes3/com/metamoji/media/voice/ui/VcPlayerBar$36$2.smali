.class Lcom/metamoji/media/voice/ui/VcPlayerBar$36$2;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar$36;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/voice/ui/VcPlayerBar$36;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar$36;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3069
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$36$2;->this$1:Lcom/metamoji/media/voice/ui/VcPlayerBar$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3072
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$36$2;->this$1:Lcom/metamoji/media/voice/ui/VcPlayerBar$36;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$36;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$36$2;->this$1:Lcom/metamoji/media/voice/ui/VcPlayerBar$36;

    iget-object v1, v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$36;->val$index:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->performJump(Ljava/util/Map;)Z

    return-void
.end method
