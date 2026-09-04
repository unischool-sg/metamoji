.class Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;
.super Ljava/lang/Object;
.source "DmContentsManagerBaseAbstract.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->writeContentsDataFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

.field final synthetic val$ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

.field final synthetic val$k:Ljava/lang/String;

.field final synthetic val$nf:Ljava/io/File;

.field final synthetic val$orfn:Ljava/lang/String;

.field final synthetic val$pd:Ljava/io/File;

.field final synthetic val$v:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmContentsContext;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->this$0:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    iput-object p2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->val$ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    iput-object p3, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->val$k:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->val$v:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->val$nf:Ljava/io/File;

    iput-object p6, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->val$orfn:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->val$pd:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->val$ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->val$k:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->val$v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->val$orfn:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 243
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->val$pd:Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->val$orfn:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 249
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->val$nf:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 239
    new-instance v0, Lcom/metamoji/cm/CmException;

    invoke-direct {v0}, Lcom/metamoji/cm/CmException;-><init>()V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
