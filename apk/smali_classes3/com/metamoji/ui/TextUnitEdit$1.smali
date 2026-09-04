.class Lcom/metamoji/ui/TextUnitEdit$1;
.super Ljava/lang/Object;
.source "TextUnitEdit.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/TextUnitEdit;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 151
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$1;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$1;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {p1}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$fget_textModel(Lcom/metamoji/ui/TextUnitEdit;)Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$1;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->appearContextMenu()V

    const/4 p1, 0x1

    return p1
.end method
