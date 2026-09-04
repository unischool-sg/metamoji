.class Lcom/metamoji/un/text/UnTextUnit$37;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->remakeLineTableAfter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$movedParagArray:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Ljava/util/List;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8701
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$37;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$37;->val$movedParagArray:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8703
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$37;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$37;->val$movedParagArray:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->access$000(Lcom/metamoji/un/text/UnTextUnit;Ljava/util/List;)V

    return-void
.end method
