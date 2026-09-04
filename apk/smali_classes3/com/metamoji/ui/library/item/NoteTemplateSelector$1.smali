.class Lcom/metamoji/ui/library/item/NoteTemplateSelector$1;
.super Ljava/lang/Object;
.source "NoteTemplateSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 181
    iput-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$1;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 183
    iget-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$1;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    invoke-static {p1, p3}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->-$$Nest$mgetItem(Lcom/metamoji/ui/library/item/NoteTemplateSelector;I)Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->isShareTemplate()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 199
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result p2

    if-nez p2, :cond_0

    .line 200
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ui/library/item/NoteTemplateSelector$1$2;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$1$2;-><init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector$1;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    .line 213
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$1;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    invoke-static {p2}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->-$$Nest$fget_listener(Lcom/metamoji/ui/library/item/NoteTemplateSelector;)Lcom/metamoji/ui/library/item/NoteTemplateSelector$Listener;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->getDocId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$Listener;->onItemClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
