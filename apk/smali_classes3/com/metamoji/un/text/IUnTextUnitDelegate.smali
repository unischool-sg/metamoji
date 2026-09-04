.class public interface abstract Lcom/metamoji/un/text/IUnTextUnitDelegate;
.super Ljava/lang/Object;
.source "IUnTextUnitDelegate.java"


# virtual methods
.method public abstract adjustWidthInsidePaper(F)F
.end method

.method public abstract applyBackgroundColorToMazec()V
.end method

.method public abstract changedTextModelModified(Z)V
.end method

.method public abstract changedUnitStyle(Lcom/metamoji/un/text/model/UnitStyles;)V
.end method

.method public abstract checkSpellingAt(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/cm/IAction1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextPosition;",
            "Lcom/metamoji/cm/IAction1<",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract checkUnitMinSize(Lcom/metamoji/cm/SizeF;)V
.end method

.method public abstract checkUnitMinSizeOnInit(Lcom/metamoji/cm/SizeF;)V
.end method

.method public abstract delayShareSendTextUnitDataAfterUndoOrRedo(Z)V
.end method

.method public abstract didEndMakingLineTable()V
.end method

.method public abstract getGeometricUndoOrRedo(Lcom/metamoji/df/controller/GeometricProps;)Lcom/metamoji/df/controller/GeometricProps;
.end method

.method public abstract getHotSpotLocations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnitFilterColor()Lcom/metamoji/un/text/model/ColorComponent;
.end method

.method public abstract hasTag(Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;)Z
.end method

.method public abstract hideSelectionModifierCursorController()V
.end method

.method public abstract isVisibleHotSpots()Z
.end method

.method public abstract overrideAttributesByStyleBar(Lcom/metamoji/un/text/model/attr/Attributes;)Lcom/metamoji/un/text/model/attr/Attributes;
.end method

.method public abstract remakeLineTableAfter()V
.end method

.method public abstract remakeLineTableBefore()V
.end method

.method public abstract removeSpellErrorLocations(Lcom/metamoji/un/text/model/TextPosition;)V
.end method

.method public abstract setGeometricUndoOrRedo(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;ZZ)V
.end method

.method public abstract setHotSpotLocations(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNeedsDisplay()V
.end method

.method public abstract setNeedsDisplayFrom(Lcom/metamoji/un/text/model/TextPosition;)V
.end method

.method public abstract setUnitNoDropShadowUndoOrRedo(Z)V
.end method

.method public abstract setUnitNotDelWhenEmptyUndoOrRedo(Z)V
.end method

.method public abstract shareSendTextUnitData()V
.end method

.method public abstract transcribeUnitBorderStyle(Lcom/metamoji/un/text/model/UnitBorderStyle;)Lcom/metamoji/un/text/model/UnitBorderStyle;
.end method

.method public abstract updateCursorControlerPositions()V
.end method
