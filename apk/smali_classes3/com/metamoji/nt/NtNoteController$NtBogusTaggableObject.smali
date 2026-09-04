.class public Lcom/metamoji/nt/NtNoteController$NtBogusTaggableObject;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/ctold/CtTaggableObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtNoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NtBogusTaggableObject"
.end annotation


# instance fields
.field _pageId:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;)V
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

    .line 342
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$NtBogusTaggableObject;->this$0:Lcom/metamoji/nt/NtNoteController;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$NtBogusTaggableObject;->_pageId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getObjectBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 400
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$NtBogusTaggableObject;->_pageId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectType()Lcom/metamoji/ctold/object/CtObjectType;
    .locals 1

    .line 354
    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_PAGE:Lcom/metamoji/ctold/object/CtObjectType;

    return-object v0
.end method

.method public getOwnerUnit()Lcom/metamoji/ctold/CtTaggableObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentObject()Lcom/metamoji/ctold/CtTaggableObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
