.class public Lcom/metamoji/ctold/template/CtNoteTagTemplates;
.super Ljava/lang/Object;
.source "CtNoteTagTemplates.java"

# interfaces
.implements Lcom/metamoji/ctold/template/CtTagTemplates;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTagClass(Lcom/metamoji/ctold/tag/CtTagClass;)V
    .locals 0

    return-void
.end method

.method public deleteTagClass(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getTagClass(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagClass;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagClass;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public renameTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateTagClass(Lcom/metamoji/ctold/tag/CtTagClass;)V
    .locals 0

    return-void
.end method
