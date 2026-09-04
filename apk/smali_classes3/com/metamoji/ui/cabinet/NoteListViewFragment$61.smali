.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$61;
.super Ljava/util/ArrayList;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleScoreListForContextMenu(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$docId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 7185
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$61;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$61;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$61;->add(Ljava/lang/Object;)Z

    return-void
.end method
