.class Lcom/metamoji/media/voice/ui/VcPlayerBar$36$1;
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

.field final synthetic val$jump:Lcom/metamoji/nt/NtTagJump;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar$36;Lcom/metamoji/nt/NtTagJump;)V
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

    .line 3062
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$36$1;->this$1:Lcom/metamoji/media/voice/ui/VcPlayerBar$36;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$36$1;->val$jump:Lcom/metamoji/nt/NtTagJump;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3065
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$36$1;->val$jump:Lcom/metamoji/nt/NtTagJump;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTagJump;->performTagJump()Z

    return-void
.end method
