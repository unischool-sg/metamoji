.class Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$2;
.super Ljava/util/HashMap;
.source "TextUndoDataCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createRemoveString(III)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 2

    .line 79
    iput-object p1, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$2;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 80
    const-string v0, "name"

    const-string v1, "removeString"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "param"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
