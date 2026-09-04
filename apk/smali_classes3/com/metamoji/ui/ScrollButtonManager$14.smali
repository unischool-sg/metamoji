.class Lcom/metamoji/ui/ScrollButtonManager$14;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ScrollButtonManager;->reshowButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ScrollButtonManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 802
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$14;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$14;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->showButtons()V

    return-void
.end method
