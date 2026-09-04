.class public Lcom/metamoji/un/draw2/jni/library/mesh/MeshManager;
.super Ljava/lang/Object;
.source "MeshManager.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 9
    invoke-static {}, Lcom/metamoji/un/draw2/jni/DrawUnitComponent;->use()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native native_addBlock(JFFFFJJ)V
.end method

.method protected static native native_addBlocksBegin(JJJ)V
.end method

.method protected static native native_addBlocksEnd(J)V
.end method

.method protected static native native_addBlocksExec(JFFFF)V
.end method

.method protected static native native_blockCount(J)I
.end method

.method protected static native native_blockCountWithId(JJJ)I
.end method

.method protected static native native_create()J
.end method

.method protected static native native_destroy(J)V
.end method

.method protected static native native_directSearchWithBounds(JLcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;FFFF)V
.end method

.method protected static native native_directSearchWithPoint(JLcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;FFF)V
.end method

.method protected static native native_directSearchWithSegment(JLcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;FFFFF)V
.end method

.method protected static native native_removeAllBlocks(J)V
.end method

.method protected static native native_removeBlocksWithId(JJJ)V
.end method

.method protected static native native_searchWithBounds(JLcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;FFFF)V
.end method

.method protected static native native_searchWithPoint(JLcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;FFF)V
.end method

.method protected static native native_searchWithSegment(JLcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;FFFFF)V
.end method

.method protected static native native_updateBlock(JFFFFIJJ)Z
.end method

.method protected static native native_updateBlocksBegin(JJJ)Z
.end method

.method protected static native native_updateBlocksEnd(J)Z
.end method

.method protected static native native_updateBlocksExec(JFFFF)V
.end method

.method protected static native native_updateBounds(JFFFF)V
.end method
