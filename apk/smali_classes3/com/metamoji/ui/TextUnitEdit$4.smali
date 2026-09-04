.class Lcom/metamoji/ui/TextUnitEdit$4;
.super Ljava/lang/Object;
.source "TextUnitEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/TextUnitEdit;->commandSelect()V
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

    .line 988
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$4;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$4;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit;->appearContextMenu()V

    return-void
.end method
