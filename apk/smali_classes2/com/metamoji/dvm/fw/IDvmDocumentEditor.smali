.class public interface abstract Lcom/metamoji/dvm/fw/IDvmDocumentEditor;
.super Ljava/lang/Object;
.source "IDvmDocumentEditor.java"


# virtual methods
.method public abstract closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V
.end method

.method public abstract getDocumentID()Ljava/lang/String;
.end method

.method public abstract getDocumentSettings()Lcom/metamoji/nt/NtDocumentSettings;
.end method

.method public abstract getDriveID()Ljava/lang/String;
.end method

.method public abstract getEditEngine()Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;
.end method

.method public abstract getModelManager()Lcom/metamoji/df/model/IModelManager;
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
.end method

.method public abstract setMetaData(Ljava/lang/String;Ljava/lang/Object;)V
.end method
