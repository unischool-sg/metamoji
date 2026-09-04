.class Lcom/metamoji/ui/library/item/NoteTemplateSelector$2;
.super Ljava/lang/Object;
.source "NoteTemplateSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/NoteTemplateSelector;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$2;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 218
    iget-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$2;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    invoke-static {p1, p3}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->-$$Nest$mgetItem(Lcom/metamoji/ui/library/item/NoteTemplateSelector;I)Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;

    move-result-object p1

    .line 219
    iget-object p2, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$2;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    invoke-static {p2}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->-$$Nest$fget_listener(Lcom/metamoji/ui/library/item/NoteTemplateSelector;)Lcom/metamoji/ui/library/item/NoteTemplateSelector$Listener;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->getDocId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$Listener;->onItemLongClicked(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
