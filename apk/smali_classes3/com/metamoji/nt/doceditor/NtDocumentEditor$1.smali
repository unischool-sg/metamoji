.class Lcom/metamoji/nt/doceditor/NtDocumentEditor$1;
.super Ljava/util/ArrayList;
.source "NtDocumentEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/doceditor/NtDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V
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
.field final synthetic this$0:Lcom/metamoji/nt/doceditor/NtDocumentEditor;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/doceditor/NtDocumentEditor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 598
    iput-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor$1;->this$0:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 599
    const-string p1, "?editstatus"

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
