.class Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController$1;
.super Ljava/lang/Object;
.source "TextUnitEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1616
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController$1;->this$1:Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController$1;->this$1:Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->hide()V

    return-void
.end method
