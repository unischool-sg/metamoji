.class Lcom/metamoji/ui/TextUnitEdit$7;
.super Ljava/lang/Object;
.source "TextUnitEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/TextUnitEdit;->hideInsertionPointCursorController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/TextUnitEdit;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/TextUnitEdit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1272
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$7;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1275
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$7;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {v0}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$fget_insertionPointCursorController(Lcom/metamoji/ui/TextUnitEdit;)Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->hide()V

    return-void
.end method
