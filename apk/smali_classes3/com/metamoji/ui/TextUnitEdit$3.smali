.class Lcom/metamoji/ui/TextUnitEdit$3;
.super Ljava/lang/Object;
.source "TextUnitEdit.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/TextUnitEdit;->appearContextMenu()V
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

    .line 718
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$3;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 721
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$3;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    check-cast p2, Lcom/metamoji/ui/TextUnitEdit$CommandId;

    invoke-static {p1, p2, p3}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$mhandleCommandMenu(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/ui/TextUnitEdit$CommandId;Ljava/lang/Object;)V

    return-void
.end method
