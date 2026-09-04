.class Lcom/metamoji/ns/NsCollaboCommand$26;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/cv/xml/ICvGetDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->uncollaborizeNoteMergingLayers(Ljava/lang/String;Ljava/util/Map;Lcom/metamoji/cm/PBE;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$encryptor:Lcom/metamoji/cm/PBE;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/PBE;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2332
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$26;->val$encryptor:Lcom/metamoji/cm/PBE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecryptor([B)Lcom/metamoji/cm/PBE;
    .locals 0

    .line 2335
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$26;->val$encryptor:Lcom/metamoji/cm/PBE;

    return-object p1
.end method
