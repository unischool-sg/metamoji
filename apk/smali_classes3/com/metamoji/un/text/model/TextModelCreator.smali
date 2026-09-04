.class public Lcom/metamoji/un/text/model/TextModelCreator;
.super Ljava/lang/Object;
.source "TextModelCreator.java"

# interfaces
.implements Lcom/metamoji/df/model/IModelCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newModel(Ljava/lang/String;Lcom/metamoji/df/model/ModelManager;I)Lcom/metamoji/df/model/Model;
    .locals 1

    .line 12
    const-string v0, "$text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Lcom/metamoji/un/text/model/TextModel;

    invoke-direct {p1, p2, p3}, Lcom/metamoji/un/text/model/TextModel;-><init>(Lcom/metamoji/df/model/ModelManager;I)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
