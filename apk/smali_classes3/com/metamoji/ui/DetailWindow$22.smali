.class Lcom/metamoji/ui/DetailWindow$22;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailWindow;->startAutoScrollTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailWindow;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1190
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$22;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$22;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailWindow;->moveRightFrame()V

    return-void
.end method
