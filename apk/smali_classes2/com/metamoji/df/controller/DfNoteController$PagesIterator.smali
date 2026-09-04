.class public Lcom/metamoji/df/controller/DfNoteController$PagesIterator;
.super Ljava/lang/Object;
.source "DfNoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/DfNoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagesIterator"
.end annotation


# instance fields
.field _context:Lcom/metamoji/df/controller/ControllerContext;

.field _index:I

.field _note:Lcom/metamoji/df/controller/DfNoteController;

.field _page:Lcom/metamoji/df/controller/DfPageController;

.field final synthetic this$0:Lcom/metamoji/df/controller/DfNoteController;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 806
    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    iput-object p2, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_note:Lcom/metamoji/df/controller/DfNoteController;

    .line 808
    iput-object p3, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_context:Lcom/metamoji/df/controller/ControllerContext;

    const/4 p1, 0x0

    .line 809
    iput p1, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_index:I

    const/4 p1, 0x0

    .line 810
    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_page:Lcom/metamoji/df/controller/DfPageController;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 814
    iget v0, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_index:I

    iget-object v1, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_note:Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfNoteController;->getNumberOfPages()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/metamoji/df/controller/DfPageController;
    .locals 2

    .line 818
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->release()V

    .line 819
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_note:Lcom/metamoji/df/controller/DfNoteController;

    iget v1, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_index:I

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/DfNoteController;->getPage(I)Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_page:Lcom/metamoji/df/controller/DfPageController;

    .line 820
    iget-object v1, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/DfPageController;->restoreTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 821
    iget v0, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_index:I

    .line 822
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_page:Lcom/metamoji/df/controller/DfPageController;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 826
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_page:Lcom/metamoji/df/controller/DfPageController;

    if-eqz v0, :cond_0

    .line 827
    iget-object v1, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/DfPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    const/4 v0, 0x0

    .line 828
    iput-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->_page:Lcom/metamoji/df/controller/DfPageController;

    :cond_0
    return-void
.end method
