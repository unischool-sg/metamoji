.class Lcom/metamoji/ns/NsCollaboCommand$20;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeUrlByApplicationDirect([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$addressArray:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1570
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$20;->val$addressArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 1578
    :cond_0
    new-instance p1, Lcom/metamoji/ns/NsCollaboCommand$20$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ns/NsCollaboCommand$20$1;-><init>(Lcom/metamoji/ns/NsCollaboCommand$20;)V

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboCommand;->uploadCollaboFileToGalleryWithCompletionBlock(Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;)V

    return-void
.end method
