.class Lcom/metamoji/un/text/UnTextUnit$39;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->hideInsertionPointCursorController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8788
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$39;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 8791
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$39;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fgetinsPtCurCtrl(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->hideImmediately()V

    return-void
.end method
