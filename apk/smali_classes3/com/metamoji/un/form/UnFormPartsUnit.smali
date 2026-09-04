.class public Lcom/metamoji/un/form/UnFormPartsUnit;
.super Lcom/metamoji/un/form/UnFormBase;
.source "UnFormPartsUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/form/UnFormPartsUnit$ModelDef;
    }
.end annotation


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "$formparts"


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/form/UnFormBase;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/metamoji/un/form/UnFormBase;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/form/UnFormBase;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    return-void
.end method

.method protected updateFormSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 0

    return-void
.end method
