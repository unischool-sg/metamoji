.class public interface abstract Lcom/metamoji/ctold/style/CtTagStyle;
.super Ljava/lang/Object;
.source "CtTagStyle.java"


# virtual methods
.method public abstract drawForDialog(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;Ljava/lang/String;)V
.end method

.method public abstract drawForSprite(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/cm/RectEx;Ljava/lang/String;Lcom/metamoji/ctold/tag/CtTagInstance;)V
.end method

.method public abstract drawForThumbnail(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;Ljava/lang/String;Lcom/metamoji/ctold/tag/CtTagInstance;)V
.end method

.method public abstract getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
.end method

.method public abstract getType()Lcom/metamoji/ctold/style/CtTagStyleType;
.end method
