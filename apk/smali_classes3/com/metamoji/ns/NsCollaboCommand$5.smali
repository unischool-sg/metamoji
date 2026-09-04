.class Lcom/metamoji/ns/NsCollaboCommand$5;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->createRoomSub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;ZZLjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$shareTemplateDic:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$5;->val$shareTemplateDic:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 0

    .line 427
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$5;->val$shareTemplateDic:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 428
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->closeDocumentWithOriginalNoteDescard()V

    :cond_0
    return-void
.end method
