.class Lcom/metamoji/ctold/CtOIDImpl;
.super Ljava/lang/Object;
.source "CtOIDImpl.java"

# interfaces
.implements Lcom/metamoji/ctold/CtOID;


# instance fields
.field private id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;


# direct methods
.method constructor <init>(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/metamoji/ctold/CtOIDImpl;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method


# virtual methods
.method getId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/ctold/CtOIDImpl;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method public isEqualsToId(Lcom/metamoji/ctold/CtOID;)Z
    .locals 1

    .line 34
    check-cast p1, Lcom/metamoji/ctold/CtOIDImpl;

    .line 35
    iget-object v0, p0, Lcom/metamoji/ctold/CtOIDImpl;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    iget-object p1, p1, Lcom/metamoji/ctold/CtOIDImpl;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result p1

    return p1
.end method
